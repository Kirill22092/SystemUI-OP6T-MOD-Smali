.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleOverflowAdapter;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;->f$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;->f$1:Lcom/android/systemui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;->f$0:Lcom/android/systemui/bubbles/BubbleOverflowAdapter;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleOverflowAdapter$MgnimWNCDitXqbPJN2vzJpXXigU;->f$1:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/bubbles/BubbleOverflowAdapter;->lambda$onBindViewHolder$0$BubbleOverflowAdapter(Lcom/android/systemui/bubbles/Bubble;Landroid/view/View;)V

    return-void
.end method
