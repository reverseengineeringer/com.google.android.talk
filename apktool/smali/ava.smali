.class public final Lava;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lavb",
        "<TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lava;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lava",
            "<*>;"
        }
    .end annotation
.end field

.field public static final b:Lavc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavc",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lava;

    invoke-direct {v0}, Lava;-><init>()V

    sput-object v0, Lava;->a:Lava;

    .line 14
    new-instance v0, Lavc;

    invoke-direct {v0}, Lavc;-><init>()V

    sput-object v0, Lava;->b:Lavc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
