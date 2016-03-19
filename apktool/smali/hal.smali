.class public final Lhal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lhak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lhad;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhal;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lhaf;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhal;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lhae;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhal;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lhal;->d:Lhak;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lhak;

    invoke-direct {v0}, Lhak;-><init>()V

    sput-object v0, Lhal;->d:Lhak;

    .line 25
    :cond_0
    const-class v0, Lhad;

    .line 1018
    new-instance v1, Lhag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhag;-><init>(Landroid/content/Context;B)V

    .line 25
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lhal;->d:Lhak;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lhak;

    invoke-direct {v0}, Lhak;-><init>()V

    sput-object v0, Lhal;->d:Lhak;

    .line 33
    :cond_0
    const-class v0, Lhaf;

    .line 1028
    new-instance v1, Lhaj;

    invoke-direct {v1}, Lhaj;-><init>()V

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lhal;->d:Lhak;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lhak;

    invoke-direct {v0}, Lhak;-><init>()V

    sput-object v0, Lhal;->d:Lhak;

    .line 41
    :cond_0
    const-class v0, Lhae;

    .line 2023
    new-instance v1, Lhai;

    invoke-direct {v1}, Lhai;-><init>()V

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
