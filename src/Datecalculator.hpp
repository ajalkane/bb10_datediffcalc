/**********************************************************************
 * Copyright 2013 Arto Jalkanen
 *
 * This file is part of Date Difference Calculator
 *
 * Date Difference Calculator is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Date Difference Calculator is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Date Difference Calculator.  If not, see <http://www.gnu.org/licenses/>
**/
#ifndef Datecalculator_HPP_
#define Datecalculator_HPP_

#include <QObject>
#include <QDateTime>
#include <QString>
#include <QDebug>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class Datecalculator : public QObject
{
    Q_OBJECT

    QDateTime startDate;
    QDateTime endDate;
    QString diffInDays;
    QString diffInMonths;
    QString diffInYears;

    void updateDiff();

    Q_PROPERTY(QString diffInDays   READ getDiffInDays   NOTIFY diffInDaysChanged   STORED false)
    Q_PROPERTY(QString diffInMonths READ getDiffInMonths NOTIFY diffInMonthsChanged STORED false)
    Q_PROPERTY(QString diffInYears  READ getDiffInYears  NOTIFY diffInYearsChanged  STORED false)

public:
    Datecalculator(bb::cascades::Application *app);
    virtual ~Datecalculator() {}

    Q_INVOKABLE inline void setStartDate(const QDateTime &dateTime) {
        startDate = dateTime;
        updateDiff();
    }
    Q_INVOKABLE inline void setEndDate(const QDateTime &dateTime) {
        endDate = dateTime;
        updateDiff();
    }

    inline const QString &getDiffInDays()   const { return diffInDays; }
    inline const QString &getDiffInMonths() const { return diffInMonths; }
    inline const QString &getDiffInYears()  const { return diffInYears; }

signals:
    void diffInDaysChanged();
    void diffInMonthsChanged();
    void diffInYearsChanged();

};


#endif /* Datecalculator_HPP_ */
