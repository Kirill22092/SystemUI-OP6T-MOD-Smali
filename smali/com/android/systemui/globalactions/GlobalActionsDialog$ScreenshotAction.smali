.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 1038
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1043
    sget v0, Lcom/android/systemui/R$drawable;->ic_global_action_screenshot:I

    const v1, 0x1040386

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "settings_screenrecord_long_press"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_SCREENSHOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1091
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenRecordHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/ScreenRecordHelper;->launchRecordPrompt()V

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->onPress()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPress()V
    .locals 4

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1074
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result p0

    int-to-long v2, p0

    .line 1054
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
