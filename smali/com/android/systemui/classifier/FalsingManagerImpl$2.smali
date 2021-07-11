.class Lcom/android/systemui/classifier/FalsingManagerImpl$2;
.super Ljava/lang/Object;
.source "FalsingManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$200(Lcom/android/systemui/classifier/FalsingManagerImpl;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setStatusBarState"

    .line 114
    invoke-static {v1, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$202(Lcom/android/systemui/classifier/FalsingManagerImpl;I)I

    .line 120
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->updateSessionActive()V

    return-void
.end method
