.class public Lcom/android/systemui/screenshot/ScreenshotServiceErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotServiceErrorReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    sget p0, Lcom/android/systemui/R$string;->screenshot_failed_to_save_unknown_text:I

    invoke-virtual {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    return-void
.end method
