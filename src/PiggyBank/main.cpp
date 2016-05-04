#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Budget.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QCoreApplication::setApplicationName("PiggyBank");
    QCoreApplication::setOrganizationName("HelpfulStuff");
    QCoreApplication::setOrganizationDomain(".com");

    Budget budget;
    engine.rootContext()->setContextProperty("MyBudget", &budget);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
