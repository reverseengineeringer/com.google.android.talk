.class public final Laoo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapi",
        "<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Laor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laor",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1159
    new-instance v0, Laop;

    invoke-direct {v0}, Laop;-><init>()V

    invoke-direct {p0, v0}, Laoo;-><init>(Laor;)V

    .line 1175
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 2134
    new-instance v0, Laos;

    invoke-direct {v0}, Laos;-><init>()V

    invoke-direct {p0, v0}, Laoo;-><init>(Laor;)V

    .line 2150
    return-void
.end method

.method private constructor <init>(Laor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laor",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Laoo;->a:Laor;

    .line 115
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lapo;)Lapg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lapo;",
            ")",
            "Lapg",
            "<",
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Laon;

    iget-object v1, p0, Laoo;->a:Laor;

    invoke-direct {v0, v1}, Laon;-><init>(Laor;)V

    return-object v0
.end method
