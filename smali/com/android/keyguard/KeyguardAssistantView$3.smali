.class Lcom/android/keyguard/KeyguardAssistantView$3;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAssistantView;->setGoogleSmartspaceChildViewHeightInternal()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewGroup_subtitle_line:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAssistantView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 414
    iput-object p2, p0, Lcom/android/keyguard/KeyguardAssistantView$3;->val$viewGroup_subtitle_line:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$3;->val$viewGroup_subtitle_line:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$3;->val$viewGroup_subtitle_line:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 420
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 421
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 422
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$3;->val$viewGroup_subtitle_line:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
