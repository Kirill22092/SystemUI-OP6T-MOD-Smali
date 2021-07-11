.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$3:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$6:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$7:Z

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$8:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$3:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$4:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$5:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$6:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$7:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$BL9Oe1XlhjuRCIkE3XITv_5klDM;->f$8:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->lambda$setWifiIndicators$0$CallbackHandler(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
