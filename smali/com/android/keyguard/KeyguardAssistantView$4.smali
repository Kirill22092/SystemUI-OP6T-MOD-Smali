.class Lcom/android/keyguard/KeyguardAssistantView$4;
.super Ljava/lang/Object;
.source "KeyguardAssistantView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAssistantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAssistantView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$4;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHistoryParentSimpleName(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const-class v0, Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    if-ge p0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameLayout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "F"

    goto :goto_1

    :cond_1
    const-string v2, "LinearLayout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "L"

    goto :goto_1

    :cond_2
    const-string v2, "RelativeLayout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "R"

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAssistantView$4;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAssistantView$4;->getHistoryParentSimpleName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardAssistantView;->access$902(Lcom/android/keyguard/KeyguardAssistantView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$4;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onViewAttachedToWindow"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAssistantView$4;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    const-class v0, Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardAssistantView;->access$902(Lcom/android/keyguard/KeyguardAssistantView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAssistantView$4;->this$0:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAssistantView;->access$900(Lcom/android/keyguard/KeyguardAssistantView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onViewDetachedFromWindow"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
