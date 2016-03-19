.class public final Lceo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field private static g:Lcem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lilx;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->a:Ljava/lang/String;

    .line 17
    const-class v0, Lceg;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->b:Ljava/lang/String;

    .line 19
    const-class v0, Lahw;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->c:Ljava/lang/String;

    .line 21
    const-class v0, Lbwl;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->d:Ljava/lang/String;

    .line 23
    const-class v0, Lcei;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->e:Ljava/lang/String;

    .line 25
    const-class v0, Lceh;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceo;->f:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 42
    :cond_0
    const-class v0, Lceg;

    sget-object v1, Lceo;->g:Lcem;

    .line 43
    invoke-virtual {v1, p0}, Lcem;->a(Landroid/content/Context;)Lceg;

    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 44
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 34
    :cond_0
    const-class v0, Lilx;

    .line 1040
    const/4 v1, 0x1

    new-array v1, v1, [Lilx;

    const/4 v2, 0x0

    new-instance v3, Lcel;

    invoke-direct {v3}, Lcel;-><init>()V

    aput-object v3, v1, v2

    .line 34
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 36
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 50
    :cond_0
    const-class v0, Lahw;

    .line 2068
    sget-object v1, Latr;->a:Latr;

    .line 1419
    invoke-virtual {v1, p0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v1

    .line 50
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 52
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 58
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lceo;->g:Lcem;

    .line 59
    invoke-virtual {v1}, Lcem;->a()[Lbwl;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 60
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 66
    :cond_0
    const-class v0, Lcei;

    .line 3050
    new-instance v1, Lcep;

    invoke-direct {v1, p0}, Lcep;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 68
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lceo;->g:Lcem;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lceo;->g:Lcem;

    .line 74
    :cond_0
    const-class v0, Lceh;

    .line 3055
    new-instance v1, Lcej;

    invoke-direct {v1, p0}, Lcej;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 76
    return-void
.end method
