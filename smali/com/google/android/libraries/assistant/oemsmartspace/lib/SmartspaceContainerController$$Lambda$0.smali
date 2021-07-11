.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

.field private final arg$2:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;->arg$2:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$$Lambda$0;->arg$2:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->lambda$new$0$SmartspaceContainerController(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V

    return-void
.end method
