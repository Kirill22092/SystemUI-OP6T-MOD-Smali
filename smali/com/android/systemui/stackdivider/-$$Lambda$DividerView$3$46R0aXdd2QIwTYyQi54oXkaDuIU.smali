.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$3$46R0aXdd2QIwTYyQi54oXkaDuIU;->f$1:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$3;->lambda$onAnimationEnd$0(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method
