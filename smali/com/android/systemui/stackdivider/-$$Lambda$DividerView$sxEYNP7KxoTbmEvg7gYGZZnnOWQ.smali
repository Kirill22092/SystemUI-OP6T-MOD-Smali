.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$sxEYNP7KxoTbmEvg7gYGZZnnOWQ;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$onRecentsDrawn$5$DividerView(I)V

    return-void
.end method
