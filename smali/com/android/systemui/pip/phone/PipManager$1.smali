.class Lcom/android/systemui/pip/phone/PipManager$1;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFixedRotationFinished(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipManager;->access$002(Lcom/android/systemui/pip/phone/PipManager;Z)Z

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipManager;->access$002(Lcom/android/systemui/pip/phone/PipManager;Z)Z

    return-void
.end method
