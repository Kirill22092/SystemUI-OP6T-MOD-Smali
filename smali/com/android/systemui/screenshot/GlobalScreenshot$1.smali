.class Lcom/android/systemui/screenshot/GlobalScreenshot$1;
.super Landroid/os/Handler;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/Looper;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 236
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v0, 0x0

    const-string/jumbo v1, "timeout"

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
