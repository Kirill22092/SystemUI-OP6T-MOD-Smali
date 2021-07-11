.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;
.super Landroid/view/View$AccessibilityDelegate;
.source "LockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 357
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 366
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 368
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_unlock_without_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_waiting_for_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 373
    const-class p1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
