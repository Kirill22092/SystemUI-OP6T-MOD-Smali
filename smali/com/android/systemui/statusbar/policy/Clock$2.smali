.class Lcom/android/systemui/statusbar/policy/Clock$2;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$1002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$1100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$1100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Clock;->access$1000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReceive$1(Ljava/util/Locale;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$800(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$802(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$902(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReceive$2()V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method private synthetic lambda$onReceive$3()V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateMinWidth()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$Clock$2(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$Clock$2(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$1(Ljava/util/Locale;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$Clock$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$2()V

    return-void
.end method

.method public synthetic lambda$onReceive$3$Clock$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$3()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 327
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler is null, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tag:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "time-zone"

    .line 334
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 335
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$NVwlBsd8V0hLupY9sb0smFA7zNw;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$NVwlBsd8V0hLupY9sb0smFA7zNw;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 341
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 342
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 343
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/util/Locale;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    const-string p2, "android.intent.action.TIME_TICK"

    .line 352
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$200(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 353
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 354
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    .line 355
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$600(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "time_tick, remove call back"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 358
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$508(Lcom/android/systemui/statusbar/policy/Clock;)I

    .line 359
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/Clock;->access$700(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time_tick, counter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Clock;->access$500(Lcom/android/systemui/statusbar/policy/Clock;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_4
    :goto_1
    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$o-1RwRa8QxTjY8VoCzVUNtPcHSs;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$o-1RwRa8QxTjY8VoCzVUNtPcHSs;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
