.class Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.super Ljava/lang/Object;
.source "SignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconGroup"
.end annotation


# instance fields
.field final mContentDesc:[I

.field final mDiscContentDesc:I

.field final mName:Ljava/lang/String;

.field final mQsDiscState:I

.field final mQsIcons:[[I

.field final mQsNullState:I

.field final mSbDiscState:I

.field final mSbIcons:[[I

.field final mSbNullState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIII)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbIcons:[[I

    .line 241
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsIcons:[[I

    .line 242
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mContentDesc:[I

    .line 243
    iput p5, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbNullState:I

    .line 244
    iput p6, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsNullState:I

    .line 245
    iput p7, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbDiscState:I

    .line 246
    iput p8, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mQsDiscState:I

    .line 247
    iput p9, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mDiscContentDesc:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
