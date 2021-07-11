.class public Lcom/oneplus/aod/slice/OpCalendarSlice;
.super Lcom/oneplus/aod/slice/OpSlice;
.source "OpCalendarSlice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;
    }
.end annotation


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

.field private mEventUri:Landroid/net/Uri;

.field private mReminderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "allDay"

    const-string v3, "dtstart"

    const-string v4, "eventLocation"

    .line 20
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/slice/OpCalendarSlice;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lcom/oneplus/aod/slice/OpSlice;-><init>(Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    .line 39
    iput-object p2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    .line 43
    sget p2, Lcom/android/systemui/R$drawable;->op_aod_slice_calendar:I

    iput p2, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    .line 45
    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    .line 50
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEventUri:Landroid/net/Uri;

    .line 51
    sget-object p1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mReminderUri:Landroid/net/Uri;

    return-void
.end method

.method private getReminder(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mReminderUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "(event_id = ?)"

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "minutes"

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->setReminderInMinutes(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v1, "getReminder occur exception"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 155
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_3
    throw p0
.end method

.method private getSoonestEvent()V
    .locals 11

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEventUri:Landroid/net/Uri;

    sget-object v5, Lcom/oneplus/aod/slice/OpCalendarSlice;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "((hasAlarm = 1) AND (dtstart >= ?) AND (deleted != 1))"

    const-string v8, "dtstart LIMIT 1"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 114
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v3, "title"

    .line 115
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "dtstart"

    .line 116
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "eventLocation"

    .line 117
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    new-instance v10, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    move-object v3, v10

    move-object v4, p0

    move v5, v1

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;-><init>(Lcom/oneplus/aod/slice/OpCalendarSlice;ILjava/lang/String;JLjava/lang/String;)V

    iput-object v10, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    .line 123
    invoke-direct {p0, v1}, Lcom/oneplus/aod/slice/OpCalendarSlice;->getReminder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 127
    :try_start_1
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v2, "getSoonestEvent occur exception"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 130
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_3
    throw p0
.end method

.method private updateEvent()V
    .locals 7

    .line 55
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->getSoonestEvent()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 58
    iget-object v2, v0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    .line 59
    iget-object v2, v0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mLocation:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    .line 61
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$plurals;->smart_aod_calendar_remain_time:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mRemark:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy hh:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    iget-wide v5, v3, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mDateStartTimeInMillis:J

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    iget-wide v5, v5, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mReminderTimeInMillis:J

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reminderTime = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", location = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    const/16 v2, 0x2d

    if-gt v0, v2, :cond_1

    .line 74
    invoke-virtual {p0, v4}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->updateUI()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleSetListening(Z)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/oneplus/aod/slice/OpSlice;->handleSetListening(Z)V

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->updateEvent()V

    :cond_0
    return-void
.end method

.method public handleTimeChanged()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/oneplus/aod/slice/OpSlice;->handleTimeChanged()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->updateEvent()V

    return-void
.end method
