.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/content/BroadcastReceiver;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "close system dialogs"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
