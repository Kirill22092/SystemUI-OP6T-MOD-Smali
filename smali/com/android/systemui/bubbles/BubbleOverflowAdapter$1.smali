.class Lcom/android/systemui/bubbles/BubbleOverflowAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "BubbleOverflowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->onBindViewHolder(Lcom/android/systemui/bubbles/BubbleOverflowAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$1;->this$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 290
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 293
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflowAdapter$1;->this$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    .line 296
    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->access$000(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->bubble_accessibility_action_add_back:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
