.class Lcom/android/systemui/SizeCompatModeActivityController$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SizeCompatModeActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SizeCompatModeActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/statusbar/CommandQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SizeCompatModeActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/SizeCompatModeActivityController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/SizeCompatModeActivityController$1;->this$0:Lcom/android/systemui/SizeCompatModeActivityController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController$1;->this$0:Lcom/android/systemui/SizeCompatModeActivityController;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/SizeCompatModeActivityController;->access$000(Lcom/android/systemui/SizeCompatModeActivityController;ILandroid/os/IBinder;)V

    return-void
.end method
