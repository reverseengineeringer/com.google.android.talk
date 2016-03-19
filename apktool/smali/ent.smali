.class public final Lent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lenb;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lent;->a:Ljava/lang/String;

    .line 10
    const-class v0, Leni;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lent;->b:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Lilh;)V
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lent;->c:Lens;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lens;

    invoke-direct {v0}, Lens;-><init>()V

    sput-object v0, Lent;->c:Lens;

    .line 19
    :cond_0
    const-class v0, Lenb;

    .line 1022
    new-instance v1, Lenb;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lenb;-><init>(Landroid/telephony/SmsManager;)V

    .line 19
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method

.method public static b(Lilh;)V
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lent;->c:Lens;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lens;

    invoke-direct {v0}, Lens;-><init>()V

    sput-object v0, Lent;->c:Lens;

    .line 27
    :cond_0
    const-class v0, Leni;

    .line 2017
    new-instance v1, Leni;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-direct {v1, v2}, Leni;-><init>(Landroid/telephony/SmsManager;)V

    .line 27
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 29
    return-void
.end method
