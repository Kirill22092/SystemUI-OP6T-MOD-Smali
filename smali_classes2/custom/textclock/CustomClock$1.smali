.class Lcustom/textclock/CustomClock$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcustom/textclock/CustomClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcustom/textclock/CustomClock;


# direct methods
.method constructor <init>(Lcustom/textclock/CustomClock;)V
    .registers 2
    .param p1, "this$0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 54
    iput-object p1, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 57
    iget-object v2, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcustom/textclock/CustomClock;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 58
    iget-object v2, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    invoke-virtual {v2}, Lcustom/textclock/CustomClock;->onTimeChanged()V

    .line 70
    :cond_20
    :goto_20
    return-void

    .line 60
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_SET"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 61
    :cond_39
    iget-object v2, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcustom/textclock/CustomClock;->access$002(Lcustom/textclock/CustomClock;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 62
    iget-object v0, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    .line 63
    .local v0, "this$0":Lcustom/textclock/CustomClock;
    invoke-static {v0}, Lcustom/textclock/CustomClock;->access$000(Lcustom/textclock/CustomClock;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcustom/textclock/CustomClock;->access$102(Lcustom/textclock/CustomClock;[Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    .line 65
    .local v1, "this$2":Lcustom/textclock/CustomClock;
    invoke-static {v1}, Lcustom/textclock/CustomClock;->access$000(Lcustom/textclock/CustomClock;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcustom/textclock/CustomClock;->access$202(Lcustom/textclock/CustomClock;[Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcustom/textclock/CustomClock;->access$302(Lcustom/textclock/CustomClock;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcustom/textclock/CustomClock;->access$402(Lcustom/textclock/CustomClock;Z)Z

    .line 68
    iget-object v2, p0, Lcustom/textclock/CustomClock$1;->this$0:Lcustom/textclock/CustomClock;

    invoke-virtual {v2}, Lcustom/textclock/CustomClock;->onTimeChanged()V

    goto :goto_20
.end method
