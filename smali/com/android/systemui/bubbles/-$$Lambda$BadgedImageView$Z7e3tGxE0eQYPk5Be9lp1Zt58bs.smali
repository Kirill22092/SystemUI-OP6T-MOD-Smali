.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BadgedImageView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BadgedImageView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;->f$0:Lcom/android/systemui/bubbles/BadgedImageView;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;->f$0:Lcom/android/systemui/bubbles/BadgedImageView;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BadgedImageView;->lambda$setDotPositionOnLeft$0$BadgedImageView(Z)V

    return-void
.end method
