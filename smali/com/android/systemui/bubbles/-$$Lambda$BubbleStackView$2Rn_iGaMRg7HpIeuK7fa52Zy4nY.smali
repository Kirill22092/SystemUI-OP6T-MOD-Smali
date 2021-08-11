.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/systemui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$2:Lcom/android/systemui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;->f$2:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpManageMenu$12$BubbleStackView(Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
