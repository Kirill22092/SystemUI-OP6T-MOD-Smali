.class Lcom/android/systemui/bubbles/BubbleExpandedView$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;->update(Lcom/android/systemui/bubbles/Bubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$3;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 617
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 621
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView$3;->this$0:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->access$1000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
