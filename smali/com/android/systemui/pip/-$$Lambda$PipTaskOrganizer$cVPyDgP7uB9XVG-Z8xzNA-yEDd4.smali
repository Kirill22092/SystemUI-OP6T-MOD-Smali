.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    iput p2, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget p0, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionFinished$3$PipTaskOrganizer(I)V

    return-void
.end method
