.class public final Loa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lob;

    invoke-direct {v0}, Lob;-><init>()V

    sput-object v0, Loa;->a:Loc;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Lod;

    invoke-direct {v0}, Lod;-><init>()V

    sput-object v0, Loa;->a:Loc;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Loc;

    invoke-direct {v0}, Loc;-><init>()V

    sput-object v0, Loa;->a:Loc;

    goto :goto_0
.end method
