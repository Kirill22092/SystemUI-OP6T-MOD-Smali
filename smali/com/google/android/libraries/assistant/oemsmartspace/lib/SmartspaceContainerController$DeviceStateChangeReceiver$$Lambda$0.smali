.class final synthetic Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver$$Lambda$0;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver$$Lambda$0;->arg$1:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController$DeviceStateChangeReceiver;->lambda$onReceive$0$SmartspaceContainerController$DeviceStateChangeReceiver()V

    return-void
.end method
