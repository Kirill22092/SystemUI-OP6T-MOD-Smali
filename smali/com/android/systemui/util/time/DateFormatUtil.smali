.class public Lcom/android/systemui/util/time/DateFormatUtil;
.super Ljava/lang/Object;
.source "DateFormatUtil.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/time/DateFormatUtil;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public is24HourFormat()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/time/DateFormatUtil;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
