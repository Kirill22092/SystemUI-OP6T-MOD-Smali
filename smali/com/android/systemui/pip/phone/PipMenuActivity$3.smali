.class Lcom/android/systemui/pip/phone/PipMenuActivity$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;->initAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 251
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->pip_menu_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 253
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$1000(Lcom/android/systemui/pip/phone/PipMenuActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6b

    .line 260
    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v2, "Could not notify controller to show PIP menu"

    invoke-static {v1, v0, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$1100(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/os/Message;Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
