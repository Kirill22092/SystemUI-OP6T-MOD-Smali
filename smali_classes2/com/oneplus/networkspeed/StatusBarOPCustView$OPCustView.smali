.class Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;
.super Ljava/lang/Object;
.source "StatusBarOPCustView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/networkspeed/StatusBarOPCustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPCustView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mValidArray:[Ljava/lang/Class;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oneplus/networkspeed/StatusBarOPCustView;Landroid/content/Context;)V
    .locals 2

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    .line 255
    const-class v1, Landroid/widget/TextView;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-class v1, Lcom/oneplus/networkspeed/NetworkSpeedView;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    .line 261
    iput-object p2, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    check-cast p0, Lcom/oneplus/networkspeed/NetworkSpeedView;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setView(Landroid/view/View;)Z
    .locals 5

    .line 265
    iput-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    .line 268
    iget-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 269
    iget-object v4, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p1, "StatusBarOPCustView"

    const-string v0, "Load StatusBarOPCustView error, the resource is not valid."

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    :cond_2
    return v2
.end method

.method public setVisibility(I)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/oneplus/networkspeed/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
