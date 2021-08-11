.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$1$CmgEGLTOVVQV5yIb7ebHF_uhtJc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$1$CmgEGLTOVVQV5yIb7ebHF_uhtJc;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$1$CmgEGLTOVVQV5yIb7ebHF_uhtJc;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$1$CmgEGLTOVVQV5yIb7ebHF_uhtJc;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$1$CmgEGLTOVVQV5yIb7ebHF_uhtJc;->f$1:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;->lambda$onChanged$0$VolumeDialogControllerImpl$RingerModeObservers$1(Ljava/lang/Integer;)V

    return-void
.end method
