.class public final Lest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lesu;

    invoke-direct {v0}, Lesu;-><init>()V

    sput-object v0, Lest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lest;->a:I

    .line 61
    iput-object p2, p0, Lest;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lest;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lest;->a:I

    .line 52
    const-string v0, "phone"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lest;->b:Ljava/lang/String;

    .line 1216
    invoke-static {p1}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    .line 1217
    const-string v0, "phone"

    .line 1218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_1

    .line 1221
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1223
    invoke-virtual {v1}, Leut;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    invoke-virtual {v1, v0}, Leut;->b(Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    iput-object v0, p0, Lest;->c:Ljava/lang/String;

    .line 57
    return-void

    .line 1232
    :cond_1
    invoke-virtual {v1}, Leut;->k()Ljava/lang/String;

    move-result-object v0

    .line 1233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1237
    const-string v0, "Babel_telephony"

    const-string v1, "TeleNetworkStatus.getCurrentNetworkCountryIso, network country is unknown."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Leuq;)Lest;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Leuq;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 158
    :goto_0
    iget-object v2, p0, Leuq;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :goto_1
    new-instance v2, Lest;

    iget v3, p0, Leuq;->a:I

    invoke-direct {v2, v3, v0, v1}, Lest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 157
    :cond_0
    iget-object v0, p0, Leuq;->b:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Leuq;->c:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0}, Lest;->c()I

    move-result v2

    .line 120
    if-eq v2, v0, :cond_0

    if-ne v2, v1, :cond_1

    .line 121
    :cond_0
    iget v2, p0, Lest;->a:I

    if-ne v2, v1, :cond_2

    .line 130
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    iget v2, p0, Lest;->a:I

    if-ne v2, v0, :cond_3

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    const-string v2, "babel_hutch_experience_for_us"

    invoke-static {p1, v2, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lest;->e()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    const-string v1, "babel_hutch_experience_for_us"

    invoke-static {p1, v1, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lest;->e()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lest;->b:Ljava/lang/String;

    .line 1242
    if-eqz v0, :cond_4

    .line 1244
    const-string v1, "310260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    const/4 v0, 0x2

    .line 1253
    :goto_0
    return v0

    .line 1246
    :cond_0
    const-string v1, "310120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    const/4 v0, 0x1

    goto :goto_0

    .line 1248
    :cond_1
    const-string v1, "311580"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1249
    const/4 v0, 0x3

    goto :goto_0

    .line 1250
    :cond_2
    const-string v1, "23420"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1251
    const/4 v0, 0x4

    goto :goto_0

    .line 1252
    :cond_3
    const-string v1, "45403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    const/4 v0, 0x5

    goto :goto_0

    .line 1255
    :cond_4
    const/4 v0, 0x0

    .line 139
    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lest;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x3

    .line 152
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lest;->c:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    check-cast p1, Lest;

    .line 99
    iget v2, p0, Lest;->a:I

    iget v3, p1, Lest;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lest;->b:Ljava/lang/String;

    iget-object v3, p1, Lest;->b:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lest;->c:Ljava/lang/String;

    iget-object v3, p1, Lest;->c:Ljava/lang/String;

    .line 101
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method f()Leuq;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Leuq;

    invoke-direct {v0}, Leuq;-><init>()V

    .line 164
    iget v1, p0, Lest;->a:I

    iput v1, v0, Leuq;->a:I

    .line 165
    iget-object v1, p0, Lest;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lest;->b:Ljava/lang/String;

    iput-object v1, v0, Leuq;->b:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v1, p0, Lest;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lest;->c:Ljava/lang/String;

    iput-object v1, v0, Leuq;->c:Ljava/lang/String;

    .line 171
    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lest;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lest;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lest;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_0
    iget-object v1, p0, Lest;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lest;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 68
    invoke-virtual {p0}, Lest;->c()I

    move-result v0

    .line 69
    if-ne v0, v4, :cond_0

    .line 70
    const-string v0, "T-Mobile"

    .line 79
    :goto_0
    iget v1, p0, Lest;->a:I

    if-ne v1, v3, :cond_3

    .line 80
    const-string v1, "roaming"

    .line 87
    :goto_1
    iget-object v2, p0, Lest;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    if-ne v0, v3, :cond_1

    .line 72
    const-string v0, "Sprint"

    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "Uknown carrier: "

    iget-object v0, p0, Lest;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    iget v1, p0, Lest;->a:I

    if-ne v1, v4, :cond_4

    .line 82
    const-string v1, "not roaming"

    goto :goto_1

    .line 84
    :cond_4
    const-string v1, "roaming status unknown"

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lest;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lest;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return-void
.end method
