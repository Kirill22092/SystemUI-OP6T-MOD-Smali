.class public final Lcom/oneplus/aod/OpDateTimeView$Patterns;
.super Ljava/lang/Object;
.source "OpDateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpDateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Patterns"
.end annotation


# static fields
.field public static clockView12:Ljava/lang/String;

.field public static clockView24:Ljava/lang/String;


# direct methods
.method static update(Landroid/content/Context;ZI)V
    .locals 3

    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 152
    sget p1, Lcom/android/systemui/R$string;->abbrev_wday_month_day_no_year_alarm:I

    goto :goto_0

    .line 153
    :cond_0
    sget p1, Lcom/android/systemui/R$string;->abbrev_wday_month_day_no_year:I

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    sget v1, Lcom/android/systemui/R$string;->clock_12hr_format:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    sget v2, Lcom/android/systemui/R$string;->clock_24hr_format:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    const-string p1, "a"

    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    sget-object v1, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 183
    :cond_1
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateClockPattern: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DateTimeView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object p0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    const/16 p2, 0x3a

    const v0, 0xa789

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 188
    sget-object p0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update clockView12: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clockView24:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
