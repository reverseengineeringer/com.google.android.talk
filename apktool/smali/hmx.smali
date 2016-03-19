.class public final Lhmx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhmx;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lhmx;

    invoke-direct {v0}, Lhmx;-><init>()V

    sput-object v0, Lhmx;->a:Lhmx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmx;->b:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lhmx;->b:Z

    return v0
.end method
