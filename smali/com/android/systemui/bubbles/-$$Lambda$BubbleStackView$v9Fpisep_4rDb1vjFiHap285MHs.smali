.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;->f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;->f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setSelectedBubble$17$BubbleStackView(Lcom/android/systemui/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V

    return-void
.end method
