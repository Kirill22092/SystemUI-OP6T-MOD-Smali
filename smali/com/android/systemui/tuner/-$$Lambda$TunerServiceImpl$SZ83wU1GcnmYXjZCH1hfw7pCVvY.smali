.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/TunerServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    iput p2, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    iget p0, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$SZ83wU1GcnmYXjZCH1hfw7pCVvY;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl;->lambda$upgradeTuner$0$TunerServiceImpl(I)V

    return-void
.end method
