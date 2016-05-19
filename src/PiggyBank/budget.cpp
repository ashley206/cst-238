#include "Budget.h"

Budget::Budget(): m_budget(0), m_count(0)
{
}

int Budget::getCount()
{
    return m_count;
}

void Budget::setBudget(double budget)
{
    m_budget = budget;
}

double Budget::getBudget()
{
    return m_budget;
}

Item * Budget::getItemAt(int i)
{
    return m_items.at(i);
}

void Budget::addItem(QString date, QString name, bool expense, double amnt)
{
    Item * item = new Item(date, name, expense, amnt);
    m_items.push_back(item);
    m_count++;
}

void Budget::removeItem(Item * item)
{
//    std::list<Item *>::iterator it;
//    for (it = m_items.begin(); it != m_items.end(); it++)
//    {
//        if (*it == item)
//            m_items.erase(it++);
//    }
}

void Budget::editItem(Item item, QString name, bool expense, double amount)
{
    item.setName(name);
    item.setExpense(expense);
    item.setAmount(amount);
}

//void Budget::addCategory(QString name)
//{
//    Category * cat = new Category(name);
//    m_categories.push_back(cat);
//    m_count++;
//}

//void Budget::removeCategory(Category *c)
//{
////    std::list<Category *>::iterator it;
////    bool found = false;
////    for (it = m_categories.begin(); it != m_categories.end(); it++)
////    {
////        if (*it == c)
////        {
////            found = true;
////            m_categories.erase(it++);
////        }
////    }
////    if(found)
////        m_count--;
//    if(m_categories.contains(c))
//    {
//        QList<Category *>::iterator it = m_categories.begin();
//        if((*it) == c)
//            it = m_categories.erase(it);
//        else
//            it++;
////        int index = 0;
////        QListIterator<Category *> i(m_categories);
////        if(i.next() != c)
////        {
////            i.next();
////            index++;
////        }
////        m_categories.removeAt(index);
//    }
//}

//void Budget::purgeCategories()
//{
//    QList<Category *>::iterator it = m_categories.begin();
//    while(it != m_categories.end())
//        it = m_categories.erase(it++);

////    std::list<Category *>::iterator it;
////    for (it = m_categories.begin(); it != m_categories.end(); it++)
////    {
////        m_categories.erase(it++);
////    }

//}

//QString Budget::displayCategoryName(int i)
//{
//    return m_categories.at(i)->getName();
//}

Budget::~Budget()
{
    //purgeCategories();
}
