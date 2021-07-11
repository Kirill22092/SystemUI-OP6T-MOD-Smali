.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$chip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$1;->val$chip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "SmartspaceView"

    const-string v0, "Open intent from lock screen"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$1;->val$chip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->getChipIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Unhandled Chip exception"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
