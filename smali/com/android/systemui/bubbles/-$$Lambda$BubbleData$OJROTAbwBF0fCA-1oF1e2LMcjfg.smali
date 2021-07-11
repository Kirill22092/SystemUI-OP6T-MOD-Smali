.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$removeBubblesWithInvalidShortcuts$0(Ljava/lang/String;Ljava/util/Set;Lcom/android/systemui/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method
