.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;ZLandroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$0:Lcom/android/systemui/assist/AssistManager;

    iput-boolean p2, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$3:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$0:Lcom/android/systemui/assist/AssistManager;

    iget-boolean v1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$3:Landroid/content/ComponentName;

    iget-boolean p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$CMIbj1AIEeENlbznV0JUh10N9G4;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/assist/AssistManager;->lambda$startAssistInternal$0$AssistManager(ZLandroid/os/Bundle;Landroid/content/ComponentName;Z)Z

    move-result p0

    return p0
.end method
