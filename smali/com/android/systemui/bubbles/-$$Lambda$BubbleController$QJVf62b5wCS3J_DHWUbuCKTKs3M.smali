.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$QJVf62b5wCS3J_DHWUbuCKTKs3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$QJVf62b5wCS3J_DHWUbuCKTKs3M;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$QJVf62b5wCS3J_DHWUbuCKTKs3M;->f$0:Lcom/android/systemui/bubbles/BubbleController;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$ensureStackViewCreated$2$BubbleController(Ljava/lang/String;)V

    return-void
.end method
