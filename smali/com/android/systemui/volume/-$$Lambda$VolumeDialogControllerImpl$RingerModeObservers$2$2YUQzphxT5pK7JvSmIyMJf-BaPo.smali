.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;->f$1:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->lambda$onChanged$0$VolumeDialogControllerImpl$RingerModeObservers$2(Ljava/lang/Integer;)V

    return-void
.end method
