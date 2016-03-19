.class public abstract Lkri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkri;

.field static final b:Lkri;

.field static final c:Lkri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lkrj;

    invoke-direct {v0}, Lkrj;-><init>()V

    sput-object v0, Lkri;->a:Lkri;

    .line 131
    new-instance v0, Lkrk;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lkrk;-><init>(I)V

    sput-object v0, Lkri;->b:Lkri;

    .line 133
    new-instance v0, Lkrk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkrk;-><init>(I)V

    sput-object v0, Lkri;->c:Lkri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lkri;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lkri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lkri;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Lkri;
.end method

.method public abstract b(ZZ)Lkri;
.end method
