.class public final Laqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lajd",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lajd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajd",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Laqt;

    invoke-direct {v0}, Laqt;-><init>()V

    sput-object v0, Laqt;->b:Lajd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lalr;II)Lalr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<TT;>;II)",
            "Lalr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    return-object p1
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
