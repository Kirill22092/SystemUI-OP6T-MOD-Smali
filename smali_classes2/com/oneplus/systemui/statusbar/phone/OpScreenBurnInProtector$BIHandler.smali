.class Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;
.super Landroid/os/Handler;
.source "OpScreenBurnInProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "OpScreenBurnInProtector"

    const-string p1, "msg null"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V

    :goto_0
    return-void
.end method
