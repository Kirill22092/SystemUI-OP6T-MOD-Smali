.class Lcom/android/systemui/statusbar/phone/NavigationModeController$2;
.super Landroid/content/BroadcastReceiver;
.source "NavigationModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 94
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_OVERLAY_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    return-void
.end method
