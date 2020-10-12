.class Lcustom/textclock/CustomClock$2;
.super Ljava/lang/Object;
.source "CustomClock.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .locals 0
    .param p1, "this$0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 71
    iput-object p1, p0, Lcustom/textclock/CustomClock$2;->this$0:Lcustom/textclock/CustomClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 74
    iget-object v2, p0, Lcustom/textclock/CustomClock$2;->this$0:Lcustom/textclock/CustomClock;

    invoke-virtual {v2}, Lcustom/textclock/CustomClock;->onTimeChanged()V

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, "uptimeMillis":J
    iget-object v2, p0, Lcustom/textclock/CustomClock$2;->this$0:Lcustom/textclock/CustomClock;

    invoke-virtual {v2}, Lcustom/textclock/CustomClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcustom/textclock/CustomClock$2;->this$0:Lcustom/textclock/CustomClock;

    invoke-static {v3}, Lcustom/textclock/CustomClock;->access$500(Lcustom/textclock/CustomClock;)Ljava/lang/Runnable;

    move-result-object v3

    rem-long v4, v0, v6

    sub-long v4, v6, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method
