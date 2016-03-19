.class public final Llj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lll;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Llk;

    invoke-direct {v0, v2, v2}, Llk;-><init>(BB)V

    sput-object v0, Llj;->a:Lll;

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 145
    new-instance v0, Llk;

    invoke-direct {v0, v2}, Llk;-><init>(C)V

    sput-object v0, Llj;->a:Lll;

    goto :goto_0

    .line 146
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 147
    new-instance v0, Llk;

    invoke-direct {v0, v2}, Llk;-><init>(B)V

    sput-object v0, Llj;->a:Lll;

    goto :goto_0

    .line 148
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 149
    new-instance v0, Llk;

    invoke-direct {v0}, Llk;-><init>()V

    sput-object v0, Llj;->a:Lll;

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    sput-object v0, Llj;->a:Lll;

    goto :goto_0
.end method
