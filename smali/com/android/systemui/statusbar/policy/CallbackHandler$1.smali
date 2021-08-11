.class Lcom/android/systemui/statusbar/policy/CallbackHandler$1;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$connected:Z

.field final synthetic val$dataActivityId:I

.field final synthetic val$description:Ljava/lang/CharSequence;

.field final synthetic val$isWide:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$qsType:I

.field final synthetic val$roaming:Z

.field final synthetic val$stackedDataIcon:[I

.field final synthetic val$stackedVoiceIcon:[I

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusType:I

.field final synthetic val$subId:I

.field final synthetic val$typeContentDescription:Ljava/lang/CharSequence;

.field final synthetic val$typeContentDescriptionHtml:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move v1, p4

    iput v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusType:I

    move v1, p5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsType:I

    move v1, p6

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    move v1, p8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$dataActivityId:I

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$stackedDataIcon:[I

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$stackedVoiceIcon:[I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$typeContentDescription:Ljava/lang/CharSequence;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$typeContentDescriptionHtml:Ljava/lang/CharSequence;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/CharSequence;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isWide:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$subId:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$roaming:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v6, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusType:I

    iget v7, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsType:I

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    iget v10, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$dataActivityId:I

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$stackedDataIcon:[I

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$stackedVoiceIcon:[I

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$typeContentDescription:Ljava/lang/CharSequence;

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$typeContentDescriptionHtml:Ljava/lang/CharSequence;

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/CharSequence;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isWide:Z

    move/from16 v16, v2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$subId:I

    move/from16 v17, v2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$roaming:Z

    move/from16 v18, v2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$connected:Z

    move/from16 v19, v2

    invoke-interface/range {v3 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
