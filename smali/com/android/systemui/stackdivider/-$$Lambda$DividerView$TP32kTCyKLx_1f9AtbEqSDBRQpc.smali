.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$TP32kTCyKLx_1f9AtbEqSDBRQpc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$setHidden$1$DividerView(Z)V

    return-void
.end method
