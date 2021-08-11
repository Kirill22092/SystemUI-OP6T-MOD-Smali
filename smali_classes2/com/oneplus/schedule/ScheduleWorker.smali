.class public Lcom/oneplus/schedule/ScheduleWorker;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleWorker.java"


# static fields
.field private static mIsDebugModeOn:Z

.field private static final mNeedToCheckEverShowClockArray:[Ljava/lang/String;


# instance fields
.field private mAlwaysOnState:I

.field public mContext:Landroid/content/Context;

.field private mLastRecordAlwaysOnState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.cust.opsysui.schedule"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/oneplus/schedule/ScheduleWorker;->mIsDebugModeOn:Z

    const-string v0, "insight"

    const-string v1, "bitmoji"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/schedule/ScheduleWorker;->mNeedToCheckEverShowClockArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    iput v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mLastRecordAlwaysOnState:I

    return-void
.end method

.method private doAction()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_on_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opsysui_last_record_always_on_state"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mLastRecordAlwaysOnState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction, mAlwaysOnState:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastRecordAlwaysOnState:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/schedule/ScheduleWorker;->mLastRecordAlwaysOnState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScheduleWorker"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    invoke-direct {p0, v0}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "always_on_new"

    const-string v6, "always_on_amount"

    invoke-static {v5, v6, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "opsysui_ever_used_always_on"

    const/16 v8, 0x64

    invoke-static {v0, v7, v8, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v9, 0x1

    const/16 v10, 0xc8

    if-ne v10, v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v10}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mLastRecordAlwaysOnState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v10, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0, v10}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v8}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v5, p0, Lcom/oneplus/schedule/ScheduleWorker;->mAlwaysOnState:I

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v0, Lcom/oneplus/schedule/ScheduleWorker;->mNeedToCheckEverShowClockArray:[Ljava/lang/String;

    array-length v1, v0

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    iget-object v7, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "showinfo_ever_show_"

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string v8, "_amount"

    if-nez v7, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v8, v10}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-ne v7, v9, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v9}, Lcom/oneplus/schedule/ScheduleWorker;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v8, v10}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "element:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", everShowInfo:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    const-class p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->uploadMdm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getPendingIntentBroadcast(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/schedule/ScheduleWorker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action.trigger.record.mdm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private intToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setSchedule()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    sget-boolean v8, Lcom/oneplus/schedule/ScheduleWorker;->mIsDebugModeOn:Z

    if-eqz v8, :cond_0

    const-string v8, "persist.cust.opsysui.schedule.hour"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const-string v2, "persist.cust.opsysui.schedule.minute"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const-string v2, "persist.cust.opsysui.schedule.second"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    invoke-direct {p0, v7}, Lcom/oneplus/schedule/ScheduleWorker;->getPendingIntentBroadcast(I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/schedule/ScheduleWorker;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/schedule/ScheduleWorker;->setSchedule()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action.trigger.record.mdm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/schedule/ScheduleWorker;->doAction()V

    :cond_2
    :goto_0
    return-void
.end method
