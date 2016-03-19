.class public final Letj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x5a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Letj;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1007
        0x100a
        0x100b
        0x1018
        0x1019
        0x101c
        0x101e
        0x1024
        0x1027
        0x102b
        0x1030
        0x1031
        0x1034
        0x1037
        0x1039
        0x103b
        0x103d
        0x103f
        0x1042
        0x1044
        0x1046
        0x1048
        0x104a
        0x104b
        0x104e
        0x1054
        0x1055
        0x1057
        0x105a
        0x105c
        0x105e
        0x1063
        0x1066
        0x10b2
        0x1118
        0x1120
        0x1126
        0x112c
        0x1142
        0x1194
        0x120e
        0x122e
        0x1256
        0x12cc
        0x1376
        0x13fc
        0x1416
        0x5784
        0x5785
        0x5786
        0x5787
        0x5788
        0x5789
        0x578a
        0x578b
        0x578c
        0x578d
        0x578e
        0x578f
        0x5790
        0x5791
        0x5792
        0x5793
        0x5794
        0x5795
        0x5796
        0x5797
        0x5798
        0x5799
        0x579a
        0x579b
        0x579c
        0x579e
        0x579f
        0x57a0
        0x57a2
        0x57a3
        0x57a4
        0x57a5
        0x57a6
        0x57a7
        0x57a8
        0x57a9
        0x57aa
        0x57ab
        0x57ac
        0x57ad
        0x57ae
        0x57af
        0x57b0
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 35
    const-string v0, "phone"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v0, "Babel_telephony"

    const-string v1, "TeleRoamingDetector.getRoamingStatus, is roaming"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 61
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-static {p0}, Lera;->a(Landroid/content/Context;)Landroid/telephony/CellInfo;

    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    const-string v0, "Babel_telephony"

    const-string v1, "TeleRoamingDetector.getRoamingStatus, unable to get cell info, roaming status is unknown"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_4

    instance-of v0, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    .line 1067
    sget-object v5, Letj;->a:[I

    array-length v6, v5

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_3

    aget v7, v5, v0

    .line 1068
    if-ne v1, v7, :cond_2

    move v0, v2

    .line 55
    :goto_2
    if-nez v0, :cond_4

    .line 57
    const-string v0, "Babel_telephony"

    const-string v1, "TeleRoamingDetector.getRoamingStatus, not on Sprint Cdma, is roaming"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 58
    goto :goto_0

    .line 1067
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 1072
    goto :goto_2

    :cond_4
    move v0, v3

    .line 61
    goto :goto_0
.end method
