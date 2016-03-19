.class public Lecz;
.super Ldym;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lecz;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lecz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lecz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v0, Leda;

    invoke-direct {v0}, Leda;-><init>()V

    sput-object v0, Lecz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Ldym;-><init>(Landroid/os/Parcel;)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lbfd;JJ)V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Ldym;-><init>(Lbfd;JJ)V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;Lbfd;)Lecz;
    .locals 10

    .prologue
    .line 33
    const-class v0, Leot;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v6

    .line 37
    sget-object v0, Lecz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecz;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lecz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 40
    const-string v2, "babel_sms_background_sync_lowmark_millis"

    const-wide/32 v4, 0x5265c00

    invoke-static {v1, v2, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 43
    const-string v4, "babel_sms_background_sync_highmark_millis"

    const-wide/32 v8, 0xa4cb800

    invoke-static {v1, v4, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lecz;-><init>(Lbfd;JJ)V

    .line 47
    sget-object v1, Lecz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lecz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lecz;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p2}, Ldym;->a(Lbcg;)I

    move-result v0

    return v0
.end method

.method protected a(J)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected i()J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 6127
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 78
    if-eqz v2, :cond_0

    .line 7036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 7123
    iget-object v3, p0, Ldyx;->b:Ldvb;

    iget v3, v3, Ldvb;->a:I

    .line 79
    const-string v4, "sms_last_full_sync_time_millis"

    invoke-static {v2, v3, v4, v0, v1}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;J)J

    move-result-wide v0

    .line 82
    :cond_0
    return-wide v0
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 68
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 3660
    sget-object v1, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 4127
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget-object v1, v1, Ldvb;->b:Lbfd;

    .line 70
    if-eqz v1, :cond_0

    .line 5123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 71
    invoke-interface {v0, v1}, Leot;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 72
    invoke-static {v0}, Leny;->c(Lbfd;)V

    .line 74
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Ldym;->a(Landroid/os/Parcel;I)V

    .line 103
    return-void
.end method
