.class public final Lfam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lfal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lfak;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfam;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lfam;->b:Lfal;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lfal;

    invoke-direct {v0}, Lfal;-><init>()V

    sput-object v0, Lfam;->b:Lfal;

    .line 18
    :cond_0
    const-class v0, Lfak;

    .line 1015
    new-instance v1, Lfak;

    invoke-direct {v1, p0}, Lfak;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
